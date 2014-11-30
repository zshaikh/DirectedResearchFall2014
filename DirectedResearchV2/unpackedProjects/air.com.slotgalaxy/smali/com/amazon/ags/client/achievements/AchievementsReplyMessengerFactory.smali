.class public Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;
.super Lcom/amazon/ags/client/BaseReplyMessengerFactory;
.source "AchievementsReplyMessengerFactory.java"


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
.field private static final FEATURE_NAME:Ljava/lang/String; = "AC"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/BaseReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 37
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
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    const/16 v7, 0x11

    const-string v9, "The service request was a failure with code "

    const-string v8, ", constructing failure response"

    .line 42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 43
    .local v2, "responseBundle":Landroid/os/Bundle;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 44
    .local v3, "responseCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

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

    .line 47
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 96
    :pswitch_0
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

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

    .line 97
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Received an invalid value for request type parameter"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 49
    :pswitch_1
    if-eq v3, v7, :cond_0

    .line 50
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 51
    .local v0, "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

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

    .line 52
    new-instance v1, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .local v1, "response":Lcom/amazon/ags/api/achievements/GetAchievementsResponse;
    move-object v4, v1

    .line 94
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/achievements/GetAchievementsResponse;
    :goto_0
    return-object v4

    .line 56
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->unbundleRequestAchievementsResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto :goto_0

    .line 58
    :pswitch_2
    if-eq v3, v7, :cond_1

    .line 59
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 60
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

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

    .line 61
    new-instance v1, Lcom/amazon/ags/client/achievements/GetAchievementResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/achievements/GetAchievementResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .local v1, "response":Lcom/amazon/ags/api/achievements/GetAchievementResponse;
    move-object v4, v1

    .line 63
    goto :goto_0

    .line 65
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/achievements/GetAchievementResponse;
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->unbundleRequestAchievementResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto :goto_0

    .line 67
    :pswitch_3
    if-eq v3, v7, :cond_2

    .line 68
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 69
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

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

    .line 70
    new-instance v1, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .local v1, "response":Lcom/amazon/ags/api/RequestResponse;
    move-object v4, v1

    .line 72
    goto :goto_0

    .line 74
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->unbundleUpdateProgressResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto :goto_0

    .line 76
    :pswitch_4
    if-eq v3, v7, :cond_3

    .line 77
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 78
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

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

    .line 79
    new-instance v1, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .restart local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    move-object v4, v1

    .line 81
    goto/16 :goto_0

    .line 83
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->unbundleLoadIconResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto/16 :goto_0

    .line 87
    :pswitch_5
    if-eq v3, v7, :cond_4

    .line 88
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 89
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

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

    .line 90
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .restart local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    move-object v4, v1

    .line 92
    goto/16 :goto_0

    .line 94
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->unbundleRequestResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v4

    goto/16 :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final unbundleLoadIconResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 4
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
    .line 179
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    const-string v2, "Entering unbundleLoadIconResponse..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v1, "ACHIEVEMENT_ICON_IMAGE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 183
    .local v0, "image":[B
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon byte array in bundle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v1, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;

    invoke-direct {v1, v0, p2}, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;-><init>([BI)V

    return-object v1
.end method

.method public final unbundleRequestAchievementResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 19
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
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    const-string v16, "ACHIEVEMENT_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "id":Ljava/lang/String;
    const-string v16, "ACHIEVEMENT_TITLE"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "title":Ljava/lang/String;
    const-string v16, "ACHIEVEMENT_DESCRIPTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "description":Ljava/lang/String;
    const-string v16, "ACHIEVEMENT_POINTS"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 141
    .local v8, "pointValue":I
    const-string v16, "ACHIEVEMENT_HIDDEN"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 142
    .local v9, "hidden":Z
    const-string v16, "ACHIEVEMENT_UNLOCKED"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 143
    .local v10, "unlocked":Z
    const-string v16, "ACHIEVEMENT_UPDATE_PERCENT"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    .line 144
    .local v11, "progress":F
    const-string v16, "ACHIEVEMENT_POSITION"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 145
    .local v12, "position":I
    const-string v16, "ACHIEVEMENT_DATE_UNLOCKED"

    const-wide/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 147
    .local v14, "dateUnlockedLong":J
    if-eqz v10, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-nez v16, :cond_1

    .line 148
    :cond_0
    const/4 v13, 0x0

    .line 152
    .local v13, "dateUnlocked":Ljava/util/Date;
    :goto_0
    new-instance v4, Lcom/amazon/ags/client/achievements/AchievementImpl;

    invoke-direct/range {v4 .. v13}, Lcom/amazon/ags/client/achievements/AchievementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZFILjava/util/Date;)V

    .line 154
    .local v4, "achievement":Lcom/amazon/ags/api/achievements/Achievement;
    new-instance v16, Lcom/amazon/ags/client/achievements/GetAchievementResponseImp;

    move-object/from16 v0, v16

    move-object v1, v4

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/achievements/GetAchievementResponseImp;-><init>(Lcom/amazon/ags/api/achievements/Achievement;I)V

    return-object v16

    .line 150
    .end local v4    # "achievement":Lcom/amazon/ags/api/achievements/Achievement;
    .end local v13    # "dateUnlocked":Ljava/util/Date;
    :cond_1
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    .restart local v13    # "dateUnlocked":Ljava/util/Date;
    goto :goto_0
.end method

.method public final unbundleRequestAchievementsResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 24
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
    .line 106
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    const-string v4, "ACHIEVEMENT_ID"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 107
    .local v18, "id":[Ljava/lang/String;
    const-string v4, "ACHIEVEMENT_TITLE"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 108
    .local v22, "title":[Ljava/lang/String;
    const-string v4, "ACHIEVEMENT_DESCRIPTION"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 109
    .local v15, "description":[Ljava/lang/String;
    const-string v4, "ACHIEVEMENT_POINTS"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    .line 110
    .local v19, "pointValue":[I
    const-string v4, "ACHIEVEMENT_HIDDEN"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v16

    .line 111
    .local v16, "hidden":[Z
    const-string v4, "ACHIEVEMENT_UNLOCKED"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v23

    .line 112
    .local v23, "unlocked":[Z
    const-string v4, "ACHIEVEMENT_UPDATE_PERCENT"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v21

    .line 113
    .local v21, "progress":[F
    const-string v4, "ACHIEVEMENT_POSITION"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v20

    .line 114
    .local v20, "position":[I
    const-string v4, "ACHIEVEMENT_DATE_UNLOCKED"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v14

    .line 116
    .local v14, "dateUnlockedLong":[J
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    array-length v0, v0

    move v4, v0

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v13, "achievements":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/achievements/Achievement;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move v4, v0

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_2

    .line 120
    aget-boolean v4, v23, v17

    if-eqz v4, :cond_0

    if-nez v14, :cond_1

    .line 121
    :cond_0
    const/4 v12, 0x0

    .line 125
    .local v12, "dateUnlocked":Ljava/util/Date;
    :goto_1
    new-instance v3, Lcom/amazon/ags/client/achievements/AchievementImpl;

    aget-object v4, v18, v17

    aget-object v5, v22, v17

    aget-object v6, v15, v17

    aget v7, v19, v17

    aget-boolean v8, v16, v17

    aget-boolean v9, v23, v17

    aget v10, v21, v17

    aget v11, v20, v17

    invoke-direct/range {v3 .. v12}, Lcom/amazon/ags/client/achievements/AchievementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZFILjava/util/Date;)V

    .line 127
    .local v3, "a":Lcom/amazon/ags/api/achievements/Achievement;
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "a":Lcom/amazon/ags/api/achievements/Achievement;
    .end local v12    # "dateUnlocked":Ljava/util/Date;
    :cond_1
    new-instance v12, Ljava/util/Date;

    aget-wide v4, v14, v17

    invoke-direct {v12, v4, v5}, Ljava/util/Date;-><init>(J)V

    .restart local v12    # "dateUnlocked":Ljava/util/Date;
    goto :goto_1

    .line 130
    .end local v12    # "dateUnlocked":Ljava/util/Date;
    :cond_2
    new-instance v4, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImp;

    move-object v0, v4

    move-object v1, v13

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImp;-><init>(Ljava/util/List;I)V

    return-object v4
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
    .line 160
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    new-instance v0, Lcom/amazon/ags/client/RequestResponseImp;

    sget-object v1, Lcom/amazon/ags/api/ErrorCode;->NONE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, p2, v1}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method

.method public final unbundleUpdateProgressResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 5
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
    .line 166
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    const-string v4, "ACHIEVEMENT_NEWLY_UNLOCKED"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 168
    .local v0, "isNewlyUnlocked":Z
    new-instance v3, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;

    invoke-direct {v3, v0, p2}, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;-><init>(ZI)V

    .line 169
    .local v3, "response":Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;
    const-string v4, "ACHIEVEMENT_OVERLAY_CALLBACK"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 170
    .local v1, "overlayActionCode":I
    const-string v4, "ACHIEVEMENT_POP_UP_LAYOUT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 171
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_0

    .line 172
    iget-object v4, p0, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->popUpManager:Lcom/amazon/ags/overlay/PopUpManager;

    invoke-virtual {v4, v2, v1}, Lcom/amazon/ags/overlay/PopUpManager;->executePopUp(Landroid/widget/RemoteViews;I)V

    .line 174
    :cond_0
    return-object v3
.end method
