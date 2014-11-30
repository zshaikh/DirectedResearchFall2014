.class public Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;
.super Ljava/lang/Object;
.source "WebViewLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$JSInterface;,
        Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$MyWebViewClient;,
        Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;
    }
.end annotation


# static fields
.field public static loadingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

.field public static mWebview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    .line 26
    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->c(Ljava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    invoke-static {p0}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v9, "IMAdTrackerSDK_V_2_5_1"

    .line 143
    .line 145
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;

    invoke-direct {v0}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;-><init>()V

    .line 147
    :try_start_0
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v2, v10

    move-object v3, v11

    move v4, v10

    .line 148
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_1

    .line 163
    iput v4, v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;->a:I

    .line 164
    iput-object v3, v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;->b:Ljava/lang/String;

    .line 167
    const/16 v1, 0x138b

    if-ne v1, v4, :cond_5

    .line 169
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Webview Timeout "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_1
    return-object v0

    .line 150
    :cond_1
    aget-object v5, v1, v2

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v6, v4

    move-object v4, v3

    move v3, v10

    .line 151
    :goto_2
    array-length v7, v5

    if-lt v3, v7, :cond_2

    .line 148
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    move v4, v6

    goto :goto_0

    .line 153
    :cond_2
    const-string v7, "err"

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 155
    add-int/lit8 v6, v3, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 151
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 157
    :cond_4
    const-string v7, "res"

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 159
    add-int/lit8 v4, v3, 0x1

    aget-object v4, v5, v4

    goto :goto_3

    .line 171
    :cond_5
    const/16 v1, 0x1389

    if-ne v1, v4, :cond_6

    .line 173
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid params passed "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    const-string v1, "Check content Exception"

    invoke-static {v9, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v11

    .line 195
    goto :goto_1

    .line 175
    :cond_6
    const/16 v1, 0x138a

    if-ne v1, v4, :cond_7

    .line 177
    :try_start_1
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "XMLHTTP request not supported "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_7
    const/16 v1, 0x138d

    if-ne v1, v4, :cond_8

    .line 181
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid JSON Response "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 183
    :cond_8
    const/16 v1, 0x138c

    if-ne v1, v4, :cond_9

    .line 185
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Webview Server Error "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 187
    :cond_9
    const/16 v1, 0x1388

    if-ne v1, v4, :cond_0

    .line 189
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Webview response "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static d(Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x1770

    const/4 v8, 0x0

    const-string v12, "Failed to upload goal: "

    const-string v9, "IMAdTrackerSDK_V_2_5_1"

    .line 205
    .line 207
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    const-string v0, "iat_ids"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 210
    const-string v2, "errmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    const-string v3, "timetoLive"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 212
    const-string v4, "errcode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 214
    if-eq v1, v10, :cond_3

    .line 216
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 219
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(I)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    sget-object v4, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v4}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v5}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v5

    sget-object v6, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v6}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getRetryTime()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->addGoal(Ljava/lang/String;IJ)Z

    .line 221
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v4}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v4

    invoke-static {v0, v4}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->increaseRetryTime(Ljava/lang/String;I)Z

    move-object v0, v11

    .line 237
    :goto_0
    const/16 v4, 0x1771

    if-ne v1, v4, :cond_0

    move-object v0, v11

    .line 241
    :cond_0
    if-eq v1, v10, :cond_1

    .line 243
    const-string v4, "IMAdTrackerSDK_V_2_5_1"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Download server Error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to upload goal: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v4}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_1
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v4, "iat_ids"

    invoke-static {v1, v2, v4, v0}, Lcom/inmobi/commons/internal/IMFileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "timetoLive"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/IMFileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 265
    :cond_2
    :goto_1
    return-void

    .line 226
    :cond_3
    const/4 v4, 0x1

    sput-boolean v4, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 227
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v4, "download"

    sget-object v5, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v5}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 230
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->updateStatus()Z

    .line 233
    :cond_4
    sget-object v4, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(I)Ljava/lang/Object;

    .line 234
    sget-object v4, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v4}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->saveGoals()V

    .line 235
    const-string v4, "IMAdTrackerSDK_V_2_5_1"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Successfully uploaded goal "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v6}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sput-boolean v8, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->lastUploadStatus:Z

    .line 255
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0, v8}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->remove(I)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v2}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v2

    sget-object v3, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v3}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getRetryTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->addGoal(Ljava/lang/String;IJ)Z

    .line 257
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->increaseRetryTime(Ljava/lang/String;I)Z

    .line 258
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to upload goal: "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "download"

    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-virtual {v1}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->resetStatus()Z

    goto/16 :goto_1
.end method

.method public static deinit()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 44
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    .line 46
    return-void
.end method

.method public static initializeWebview()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->loadingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    .line 34
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$MyWebViewClient;

    invoke-direct {v1}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$MyWebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 35
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 37
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$JSInterface;

    invoke-direct {v1}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$JSInterface;-><init>()V

    const-string v2, "iatsdk"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    return v3
.end method

.method public static loadWebview()V
    .locals 2

    .prologue
    .line 284
    :try_start_0
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mWebview:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 286
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->removeAllElements()V

    .line 287
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    .line 288
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->deinit()V

    .line 289
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :try_start_1
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->networkThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 289
    monitor-exit v0

    .line 316
    :goto_0
    return-void

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 312
    :catch_0
    move-exception v0

    .line 314
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    :try_start_3
    sget-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$1;

    invoke-direct {v1}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public static saveCurrentGoal(Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/inmobi/adtracker/androidsdk/impl/Goal;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->mCurrentEvent:Lcom/inmobi/adtracker/androidsdk/impl/Goal;

    .line 51
    return-void
.end method
