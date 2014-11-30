.class public Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;
.super Ljava/lang/Object;
.source "LeaderboardsServiceProxy.java"

# interfaces
.implements Lcom/amazon/ags/client/leaderboards/LeaderboardsService;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "LB"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private agClient:Lcom/amazon/ags/api/AmazonGamesClient;

.field private amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

.field private final apiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LB_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/AmazonGamesClient;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "agClient"    # Lcom/amazon/ags/api/AmazonGamesClient;
    .param p2, "amazonGamesService"    # Lcom/amazon/ags/client/AmazonGamesService;
    .param p3, "apiHandler"    # Landroid/os/Handler;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 50
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    .line 51
    iput-object p3, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->apiHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;)Lcom/amazon/ags/client/AmazonGamesService;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->createRequestBundleWithScore(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->createRequestBundleWithFilter(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->createRequestBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->createRequestBundleWithLeaderboardId(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/amazon/ags/constants/LeaderboardFilter;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->createRequestBundleWithFilter(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private createRequestBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method private createRequestBundleWithFilter(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)Landroid/os/Bundle;
    .locals 3
    .param p1, "leaderboardID"    # Ljava/lang/String;
    .param p2, "leaderboardFilter"    # Lcom/amazon/ags/constants/LeaderboardFilter;

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->createRequestBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 256
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "LEADERBOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "LEADERBOARD_FILTER"

    invoke-virtual {p2}, Lcom/amazon/ags/constants/LeaderboardFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-object v0
.end method

.method private createRequestBundleWithFilter(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II)Landroid/os/Bundle;
    .locals 3
    .param p1, "leaderboardID"    # Ljava/lang/String;
    .param p2, "leaderboardFilter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p3, "startRank"    # I
    .param p4, "count"    # I

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->createRequestBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 265
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "LEADERBOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "LEADERBOARD_FILTER"

    invoke-virtual {p2}, Lcom/amazon/ags/constants/LeaderboardFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "LEADERBOARD_START_RANK"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v1, "LEADERBOARD_SCORES_COUNT"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    return-object v0
.end method

.method private createRequestBundleWithLeaderboardId(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->createRequestBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 241
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "LEADERBOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-object v0
.end method

.method private createRequestBundleWithScore(Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 3
    .param p1, "leaderboardID"    # Ljava/lang/String;
    .param p2, "score"    # J

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->createRequestBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 247
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "LEADERBOARD_SUBMIT_SCORE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 248
    const-string v1, "LEADERBOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "POP_UP_LOCATION"

    sget-object v2, Lcom/amazon/ags/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/overlay/PopUpPrefs;

    invoke-virtual {v2}, Lcom/amazon/ags/overlay/PopUpPrefs;->getLocation()Lcom/amazon/ags/api/overlay/PopUpLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ags/api/overlay/PopUpLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-object v0
.end method


# virtual methods
.method public final getLeaderboards(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;>;"
    sget-object v2, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Get leaderboards called with handle. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 58
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 60
    new-instance v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v2}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "replyMessengerFactory":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;>;"
    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$1;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method public getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 8
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "leaderboardFilter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p3, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;>;"
    sget-object v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get percentiles called Asynchronously with handle and leaderboardId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 214
    .local v2, "msg":Landroid/os/Message;
    const/16 v0, 0x1f

    iput v0, v2, Landroid/os/Message;->what:I

    .line 216
    new-instance v3, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 219
    .local v3, "replyMessengerFactory":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;>;"
    iget-object v7, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$7;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$7;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public final requestLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 8
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "leaderboardFilter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p3, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;>;"
    sget-object v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request Local Player Score called on leaderboardId "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Asynchronously with handle."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 138
    .local v2, "msg":Landroid/os/Message;
    const/16 v0, 0xa

    iput v0, v2, Landroid/os/Message;->what:I

    .line 140
    new-instance v3, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 143
    .local v3, "replyMessengerFactory":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;>;"
    iget-object v7, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$4;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$4;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method public final requestScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;IILcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 10
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "leaderboardFilter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p3, "startRank"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "II",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetScoresResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p5, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetScoresResponse;>;"
    sget-object v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request Scores called on leaderboardId "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Asynchronously with handle."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 112
    .local v2, "msg":Landroid/os/Message;
    const/4 v0, 0x7

    iput v0, v2, Landroid/os/Message;->what:I

    .line 114
    new-instance v3, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 117
    .local v3, "replyMessengerFactory":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<Lcom/amazon/ags/api/leaderboards/GetScoresResponse;>;"
    iget-object v9, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;

    move-object v1, p0

    move-object v4, p5

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public showLeaderboardsOverlay(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    sget-object v2, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Show achievements overlay called Asynchronously with handle."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 163
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x1b

    iput v2, v0, Landroid/os/Message;->what:I

    .line 165
    new-instance v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v2}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "replyMessengerFactory":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<Lcom/amazon/ags/api/RequestResponse;>;"
    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public showRanksOverlay(Ljava/lang/String;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 7
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    sget-object v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show ranks overlay called Asynchronously with handle and leaderboardId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 188
    .local v2, "msg":Landroid/os/Message;
    const/16 v0, 0x1c

    iput v0, v2, Landroid/os/Message;->what:I

    .line 190
    new-instance v3, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 193
    .local v3, "replyMessengerFactory":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<Lcom/amazon/ags/api/RequestResponse;>;"
    iget-object v6, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$6;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$6;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method public final submitScore(Ljava/lang/String;JLcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 9
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "score"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p4, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;>;"
    sget-object v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Submit Score "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " called Asynchronously with handle."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 83
    .local v2, "msg":Landroid/os/Message;
    const/16 v0, 0x8

    iput v0, v2, Landroid/os/Message;->what:I

    .line 85
    new-instance v3, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 88
    .local v3, "replyMessengerFactory":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;>;"
    iget-object v8, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$2;

    move-object v1, p0

    move-object v4, p4

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$2;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;J)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method
