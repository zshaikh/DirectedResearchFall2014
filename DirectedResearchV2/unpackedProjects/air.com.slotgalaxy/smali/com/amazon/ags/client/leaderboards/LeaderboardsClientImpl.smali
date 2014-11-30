.class public Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;
.super Ljava/lang/Object;
.source "LeaderboardsClientImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$1;
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "LB"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

.field private final leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LB_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/client/AmazonGamesService;Lcom/amazon/ags/client/leaderboards/LeaderboardsService;)V
    .locals 0
    .param p1, "amazonGamesService"    # Lcom/amazon/ags/client/AmazonGamesService;
    .param p2, "leaderboardsService"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 39
    iput-object p2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    .line 40
    return-void
.end method

.method private canSubmitScore()Z
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->getStatus()Lcom/amazon/ags/api/AmazonGamesStatus;

    move-result-object v0

    .line 151
    .local v0, "status":Lcom/amazon/ags/api/AmazonGamesStatus;
    sget-object v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$1;->$SwitchMap$com$amazon$ags$api$AmazonGamesStatus:[I

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 159
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 156
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final varargs getLeaderboards([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 47
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;>;"
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    sget-object v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;

    const/16 v2, 0x12

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 54
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    invoke-interface {v1, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsService;->getLeaderboards(Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method

.method public final varargs getLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p3}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 91
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;>;"
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    sget-object v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImp;

    const/16 v2, 0x12

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsService;->requestLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method

.method public final varargs getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p3}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 106
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;>;"
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    sget-object v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    const/16 v2, 0x12

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 113
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsService;->getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method

.method public final varargs getScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 6
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p3, "startRank"    # I
    .param p4, "count"    # I
    .param p5, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "II[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetScoresResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v5, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v5, p5}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 76
    .local v5, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetScoresResponse;>;"
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v0}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "Service not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;

    const/16 v1, 0x12

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v5, v0}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 83
    :goto_0
    return-object v5

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/amazon/ags/client/leaderboards/LeaderboardsService;->requestScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;IILcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method

.method public final varargs showLeaderboardOverlay(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x12

    .line 130
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p2}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 132
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    sget-object v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Provided leaderboard ID is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImp;

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v3, v2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 145
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->getStatus()Lcom/amazon/ags/api/AmazonGamesStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_NOT_OPTED_IN:Lcom/amazon/ags/api/AmazonGamesStatus;

    if-ne v1, v2, :cond_2

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    invoke-interface {v1, p1, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsService;->showRanksOverlay(Ljava/lang/String;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0

    .line 142
    :cond_2
    sget-object v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImp;

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v3, v2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    goto :goto_0
.end method

.method public final varargs showLeaderboardsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 119
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->getStatus()Lcom/amazon/ags/api/AmazonGamesStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_NOT_OPTED_IN:Lcom/amazon/ags/api/AmazonGamesStatus;

    if-ne v1, v2, :cond_1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    invoke-interface {v1, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsService;->showLeaderboardsOverlay(Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    .line 125
    :goto_0
    return-object v0

    .line 122
    :cond_1
    sget-object v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImp;

    const/16 v2, 0x12

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    goto :goto_0
.end method

.method public final varargs submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "score"    # J
    .param p4, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p4}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 62
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;>;"
    invoke-direct {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->canSubmitScore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    sget-object v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not authorized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;

    const/16 v2, 0x12

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 68
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsService;->submitScore(Ljava/lang/String;JLcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method
