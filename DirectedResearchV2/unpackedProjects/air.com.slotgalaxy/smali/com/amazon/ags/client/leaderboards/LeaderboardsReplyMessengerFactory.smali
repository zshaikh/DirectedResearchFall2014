.class public Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;
.super Lcom/amazon/ags/client/BaseReplyMessengerFactory;
.source "LeaderboardsReplyMessengerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/ags/api/RequestResponse;",
        ">",
        "Lcom/amazon/ags/client/BaseReplyMessengerFactory",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "LB"

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN_VALUE:Ljava/lang/String; = "UNKNOWN"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LB_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/BaseReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private final generateSubmitScorePopUp(Landroid/widget/RemoteViews;ILjava/lang/String;)V
    .locals 5
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "overlayActionCode"    # I
    .param p3, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 253
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    sget-object v2, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entering generateSubmitScorePopUp with RemoteViews "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v1, "overlayDataBundle":Landroid/os/Bundle;
    const-string v2, "LEADERBOARD_ID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/amazon/ags/overlay/PopUpContent;

    invoke-direct {v0, p2, p1, v1}, Lcom/amazon/ags/overlay/PopUpContent;-><init>(ILandroid/widget/RemoteViews;Landroid/os/Bundle;)V

    .line 259
    .local v0, "content":Lcom/amazon/ags/overlay/PopUpContent;
    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->popUpManager:Lcom/amazon/ags/overlay/PopUpManager;

    invoke-virtual {v2, v0}, Lcom/amazon/ags/overlay/PopUpManager;->executePopUp(Lcom/amazon/ags/overlay/PopUpContent;)V

    .line 260
    return-void
.end method


# virtual methods
.method protected final processMessage(Landroid/os/Message;)Lcom/amazon/ags/api/RequestResponse;
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const/16 v7, 0x11

    const-string v9, "The service request was a failure with code "

    const-string v8, ", constructing failure response"

    .line 60
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 61
    .local v2, "responseBundle":Landroid/os/Bundle;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 62
    .local v3, "responseCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing incoming service response message of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and responseCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 128
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal value received for request type parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Received an invalid value for request type parameter"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :sswitch_0
    if-eq v3, v7, :cond_0

    .line 68
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 69
    .local v0, "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .local v1, "response":Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;
    move-object v4, v1

    .line 126
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;
    :goto_0
    return-object v4

    .line 75
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleSubmitScoreResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto :goto_0

    .line 77
    :sswitch_1
    if-eq v3, v7, :cond_1

    .line 78
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 79
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .local v1, "response":Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;
    move-object v4, v1

    .line 83
    goto :goto_0

    .line 85
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleRequestLeaderboardsResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto :goto_0

    .line 87
    :sswitch_2
    if-eq v3, v7, :cond_2

    .line 88
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 89
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .local v1, "response":Lcom/amazon/ags/api/leaderboards/GetScoresResponse;
    move-object v4, v1

    .line 93
    goto :goto_0

    .line 95
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/leaderboards/GetScoresResponse;
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleRequestScoresResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto :goto_0

    .line 97
    :sswitch_3
    if-eq v3, v7, :cond_3

    .line 98
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 99
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .local v1, "response":Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;
    move-object v4, v1

    .line 103
    goto/16 :goto_0

    .line 105
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleRequestUserScoreResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto/16 :goto_0

    .line 108
    :sswitch_4
    if-eq v3, v7, :cond_4

    .line 109
    const/16 v0, 0x13

    .line 110
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .local v1, "response":Lcom/amazon/ags/api/RequestResponse;
    move-object v4, v1

    .line 114
    goto/16 :goto_0

    .line 116
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleRequestResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto/16 :goto_0

    .line 118
    :sswitch_5
    if-eq v3, v7, :cond_5

    .line 119
    const/16 v0, 0x13

    .line 120
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .local v1, "response":Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;
    move-object v4, v1

    .line 124
    goto/16 :goto_0

    .line 126
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;
    :cond_5
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleRequestPercentilesResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto/16 :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0x1b -> :sswitch_4
        0x1c -> :sswitch_4
        0x1f -> :sswitch_5
    .end sparse-switch
.end method

.method protected final unbundleRequestLeaderboardsResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 13
    .param p1, "responseBundle"    # Landroid/os/Bundle;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const/16 v12, 0x13

    .line 182
    const-string v8, "LEADERBOARD_GET_BOARDS_BUNDLE_NAMES"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "names":[Ljava/lang/String;
    const-string v8, "LEADERBOARD_GET_BOARDS_BUNDLE_IDS"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "ids":[Ljava/lang/String;
    const-string v8, "LEADERBOARD_DISPLAY_TEXT"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "displays":[Ljava/lang/String;
    const-string v8, "LEADERBOARD_DATA_FORMAT"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "formats":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 191
    array-length v8, v4

    new-array v0, v8, [Ljava/lang/String;

    .line 192
    const-string v8, "UNKNOWN"

    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    :cond_0
    if-nez v2, :cond_1

    .line 196
    array-length v8, v0

    new-array v2, v8, [Ljava/lang/String;

    .line 197
    sget-object v8, Lcom/amazon/ags/constants/ScoreFormat;->UNKNOWN:Lcom/amazon/ags/constants/ScoreFormat;

    invoke-virtual {v8}, Lcom/amazon/ags/constants/ScoreFormat;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    :cond_1
    array-length v8, v6

    array-length v9, v4

    if-ne v8, v9, :cond_2

    array-length v8, v4

    array-length v9, v0

    if-ne v8, v9, :cond_2

    array-length v8, v0

    array-length v9, v2

    if-eq v8, v9, :cond_3

    .line 201
    :cond_2
    new-instance v8, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;

    sget-object v9, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v8, v12, v9}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 218
    :goto_0
    return-object v8

    .line 204
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v5, "leaderboards":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/leaderboards/Leaderboard;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_4

    .line 207
    :try_start_0
    aget-object v8, v2, v3

    invoke-static {v8}, Lcom/amazon/ags/constants/ScoreFormat;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/ScoreFormat;

    move-result-object v7

    .line 209
    .local v7, "scoreFormat":Lcom/amazon/ags/constants/ScoreFormat;
    new-instance v8, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;

    aget-object v9, v4, v3

    aget-object v10, v6, v3

    aget-object v11, v0, v3

    invoke-direct {v8, v9, v10, v11, v7}, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 210
    .end local v7    # "scoreFormat":Lcom/amazon/ags/constants/ScoreFormat;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 211
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;

    sget-object v9, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v8, v12, v9}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0

    .line 213
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 214
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v8, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;

    sget-object v9, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v8, v12, v9}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0

    .line 218
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_4
    new-instance v8, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;

    invoke-direct {v8, v5, p2}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;-><init>(Ljava/util/List;I)V

    goto :goto_0
.end method

.method protected final unbundleRequestPercentilesResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 23
    .param p1, "responseBundle"    # Landroid/os/Bundle;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const-string v19, "LEADERBOARD_SCORES_ARRAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v17

    .line 266
    .local v17, "scoreValues":[J
    const-string v19, "LEADERBOARD_PERCENTILES_ARRAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v16

    .line 267
    .local v16, "percentiles":[I
    const-string v19, "LEADERBOARD_PLAYER_ALIASES_ARRAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "aliases":[Ljava/lang/String;
    const-string v19, "LEADERBOARD_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 269
    .local v14, "leaderboardId":Ljava/lang/String;
    const-string v19, "LEADERBOARD_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 270
    .local v15, "leaderboardName":Ljava/lang/String;
    const-string v19, "LEADERBOARD_DISPLAY_TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 271
    .local v12, "leaderboardDisplay":Ljava/lang/String;
    const-string v19, "LEADERBOARD_DATA_FORMAT"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 272
    .local v13, "leaderboardFormat":Ljava/lang/String;
    const-string v19, "LEADERBOARD_USER_INDEX"

    const/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 274
    .local v18, "userIndex":I
    if-eqz v17, :cond_0

    if-eqz v16, :cond_0

    if-eqz v5, :cond_0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 277
    :cond_0
    new-instance v19, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    const/16 v20, 0x13

    sget-object v21, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct/range {v19 .. v21}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 307
    :goto_0
    return-object v19

    .line 283
    :cond_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v5

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    move-object v0, v5

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 285
    :cond_2
    new-instance v19, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    const/16 v20, 0x13

    sget-object v21, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct/range {v19 .. v21}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0

    .line 290
    :cond_3
    :try_start_0
    new-instance v11, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;

    invoke-static {v13}, Lcom/amazon/ags/constants/ScoreFormat;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/ScoreFormat;

    move-result-object v19

    move-object v0, v11

    move-object v1, v14

    move-object v2, v15

    move-object v3, v12

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;)V

    .line 292
    .local v11, "leaderboard":Lcom/amazon/ags/api/leaderboards/Leaderboard;
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v10

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v10, "items":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move v6, v0

    .line 295
    .local v6, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_4

    .line 296
    new-instance v9, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImp;

    aget-object v19, v5, v8

    aget-wide v20, v17, v8

    aget v22, v16, v8

    move-object v0, v9

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImp;-><init>(Ljava/lang/String;JI)V

    .line 299
    .local v9, "item":Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 302
    .end local v9    # "item":Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;
    :cond_4
    new-instance v19, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    move-object/from16 v0, v19

    move-object v1, v11

    move-object v2, v10

    move/from16 v3, v18

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(Lcom/amazon/ags/api/leaderboards/Leaderboard;Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 303
    .end local v6    # "count":I
    .end local v8    # "i":I
    .end local v10    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;>;"
    .end local v11    # "leaderboard":Lcom/amazon/ags/api/leaderboards/Leaderboard;
    :catch_0
    move-exception v19

    move-object/from16 v7, v19

    .line 304
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    new-instance v19, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    const/16 v20, 0x13

    sget-object v21, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct/range {v19 .. v21}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    goto/16 :goto_0

    .line 306
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v19

    move-object/from16 v7, v19

    .line 307
    .local v7, "e":Ljava/lang/NullPointerException;
    new-instance v19, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    const/16 v20, 0x13

    sget-object v21, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct/range {v19 .. v21}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    goto/16 :goto_0
.end method

.method public final unbundleRequestResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "replyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    new-instance v0, Lcom/amazon/ags/client/RequestResponseImp;

    sget-object v1, Lcom/amazon/ags/api/ErrorCode;->NONE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, p2, v1}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method

.method protected final unbundleRequestScoresResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 20
    .param p1, "responseBundle"    # Landroid/os/Bundle;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const-string v2, "LEADERBOARD_SCORES_ARRAY"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v19

    .line 225
    .local v19, "scoreValues":[J
    const-string v2, "LEADERBOARD_RANKS_ARRAY"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v17

    .line 226
    .local v17, "ranks":[I
    const-string v2, "LEADERBOARD_PLAYER_ALIASES_ARRAY"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 228
    .local v16, "playerAliases":[Ljava/lang/String;
    const-string v2, "LEADERBOARD_DISPLAY_TEXT"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 229
    .local v10, "displayText":Ljava/lang/String;
    const-string v2, "LEADERBOARD_DATA_FORMAT"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 230
    .local v18, "scoreFormatString":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/amazon/ags/constants/ScoreFormat;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/ScoreFormat;

    move-result-object v11

    .line 231
    .local v11, "scoreFormat":Lcom/amazon/ags/constants/ScoreFormat;
    const-string v2, "LEADERBOARD_NAME"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 232
    .local v12, "name":Ljava/lang/String;
    const-string v2, "LEADERBOARD_ID"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "leaderboardId":Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move v2, v0

    new-array v9, v2, [Lcom/amazon/ags/api/leaderboards/Score;

    .line 235
    .local v9, "scores":[Lcom/amazon/ags/api/leaderboards/Score;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move v2, v0

    if-ge v15, v2, :cond_0

    .line 236
    new-instance v5, Lcom/amazon/ags/client/profiles/PlayerImpl;

    aget-object v2, v16, v15

    invoke-direct {v5, v2}, Lcom/amazon/ags/client/profiles/PlayerImpl;-><init>(Ljava/lang/String;)V

    .line 237
    .local v5, "player":Lcom/amazon/ags/api/profiles/Player;
    new-instance v2, Lcom/amazon/ags/client/leaderboards/ScoreImp;

    aget-wide v3, v19, v15

    aget v6, v17, v15

    invoke-direct/range {v2 .. v7}, Lcom/amazon/ags/client/leaderboards/ScoreImp;-><init>(JLcom/amazon/ags/api/profiles/Player;ILjava/lang/String;)V

    aput-object v2, v9, v15

    .line 235
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 240
    .end local v5    # "player":Lcom/amazon/ags/api/profiles/Player;
    :cond_0
    new-instance v8, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;

    move-object v13, v7

    move/from16 v14, p2

    invoke-direct/range {v8 .. v14}, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;-><init>([Lcom/amazon/ags/api/leaderboards/Score;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v8
.end method

.method protected final unbundleRequestUserScoreResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 4
    .param p1, "responseBundle"    # Landroid/os/Bundle;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const-string v3, "LEADERBOARD_SUBMIT_SCORE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 247
    .local v1, "scoreValue":J
    const-string v3, "LEADERBOARD_USER_RANK"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 249
    .local v0, "rank":I
    new-instance v3, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImp;

    invoke-direct {v3, v1, v2, v0, p2}, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImp;-><init>(JII)V

    return-object v3
.end method

.method protected final unbundleSubmitScoreResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 24
    .param p1, "responseBundle"    # Landroid/os/Bundle;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const-string v21, "LEADERBOARD_SUBMIT_RESULT"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 145
    .local v20, "results":[Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v9, "improvedInFilter":Ljava/util/Map;, "Ljava/util/Map<Lcom/amazon/ags/constants/LeaderboardFilter;Ljava/lang/Boolean;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v15, "rankInFilter":Ljava/util/Map;, "Ljava/util/Map<Lcom/amazon/ags/constants/LeaderboardFilter;Ljava/lang/Integer;>;"
    move-object/from16 v4, v20

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v12, :cond_1

    aget-object v18, v4, v8

    .line 150
    .local v18, "result":Ljava/lang/String;
    :try_start_0
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    .local v19, "resultJSON":Lorg/json/JSONObject;
    sget-object v21, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Parsing json element: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v21, "Scope"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, "filterString":Ljava/lang/String;
    invoke-static {v7}, Lcom/amazon/ags/constants/LeaderboardFilter;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v21

    if-nez v21, :cond_0

    .line 154
    sget-object v21, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid filter returned from service: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v7    # "filterString":Ljava/lang/String;
    .end local v19    # "resultJSON":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 157
    .restart local v7    # "filterString":Ljava/lang/String;
    .restart local v19    # "resultJSON":Lorg/json/JSONObject;
    :cond_0
    invoke-static {v7}, Lcom/amazon/ags/constants/LeaderboardFilter;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v6

    .line 158
    .local v6, "filter":Lcom/amazon/ags/constants/LeaderboardFilter;
    const-string v21, "PlayerRank"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 159
    .local v14, "rank":I
    const-string v21, "IsImproved"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 160
    .local v10, "isImproved":Z
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object v0, v9

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 162
    .end local v6    # "filter":Lcom/amazon/ags/constants/LeaderboardFilter;
    .end local v7    # "filterString":Ljava/lang/String;
    .end local v10    # "isImproved":Z
    .end local v14    # "rank":I
    .end local v19    # "resultJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v21

    move-object/from16 v5, v21

    .line 163
    .local v5, "e":Lorg/json/JSONException;
    sget-object v21, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    const-string v22, "Caught JSON Exception, skipping this Submit Score Result Element"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v18    # "result":Ljava/lang/String;
    :cond_1
    new-instance v17, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;

    move-object/from16 v0, v17

    move-object v1, v9

    move-object v2, v15

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    .line 168
    .local v17, "response":Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;
    sget-object v21, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Created SubmitScoreResponse: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v21, "LEADERBOARD_OVERLAY_CALLBACK_LAYOUT"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 171
    .local v13, "overlayActionCode":I
    const-string v21, "LEADERBOARD_POP_UP_LAYOUT"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/widget/RemoteViews;

    .line 172
    .local v16, "remoteViews":Landroid/widget/RemoteViews;
    const-string v21, "LEADERBOARD_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 173
    .local v11, "leaderboardId":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v13

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->generateSubmitScorePopUp(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    .line 176
    :cond_2
    return-object v17
.end method
