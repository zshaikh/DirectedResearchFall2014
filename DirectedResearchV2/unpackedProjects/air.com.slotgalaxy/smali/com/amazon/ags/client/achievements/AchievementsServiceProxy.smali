.class public Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;
.super Ljava/lang/Object;
.source "AchievementsServiceProxy.java"

# interfaces
.implements Lcom/amazon/ags/client/achievements/AchievementsService;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "AC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final agClient:Lcom/amazon/ags/api/AmazonGamesClient;

.field private amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

.field private final apiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/AmazonGamesClient;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "agClient"    # Lcom/amazon/ags/api/AmazonGamesClient;
    .param p2, "amazonGamesService"    # Lcom/amazon/ags/client/AmazonGamesService;
    .param p3, "apiHandler"    # Landroid/os/Handler;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 55
    iput-object p1, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    .line 56
    iput-object p3, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->apiHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->createRequestBundleWithIcon(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;)Lcom/amazon/ags/client/AmazonGamesService;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->createRequestBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->createRequestBundleWithAchievement(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Ljava/lang/String;F)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->createRequestBundleWithAchievementProgress(Ljava/lang/String;F)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private createRequestBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method private createRequestBundleWithAchievement(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->createRequestBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 251
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ACHIEVEMENT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-object v0
.end method

.method private createRequestBundleWithAchievementProgress(Ljava/lang/String;F)Landroid/os/Bundle;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "percentComplete"    # F

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->createRequestBundleWithAchievement(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 244
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ACHIEVEMENT_UPDATE_PERCENT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 245
    const-string v1, "POP_UP_LOCATION"

    sget-object v2, Lcom/amazon/ags/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/overlay/PopUpPrefs;

    invoke-virtual {v2}, Lcom/amazon/ags/overlay/PopUpPrefs;->getLocation()Lcom/amazon/ags/api/overlay/PopUpLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ags/api/overlay/PopUpLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-object v0
.end method

.method private createRequestBundleWithIcon(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "unlocked"    # Z

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->createRequestBundleWithAchievement(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 237
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ACHIEVEMENT_ICON_SIZE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "ACHIEVEMENT_UNLOCKED"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    return-object v0
.end method


# virtual methods
.method public loadIcon(Ljava/lang/String;Lcom/amazon/ags/constants/IconSize;ZLcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 9
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "iconSize"    # Lcom/amazon/ags/constants/IconSize;
    .param p3, "unlocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/IconSize;",
            "Z",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/achievements/LoadIconResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p4, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/achievements/LoadIconResponse;>;"
    sget-object v0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested icon for "

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

    .line 63
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 64
    .local v2, "msg":Landroid/os/Message;
    const/16 v0, 0x10

    iput v0, v2, Landroid/os/Message;->what:I

    .line 66
    new-instance v3, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    iget-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 69
    .local v3, "replyMessengerFactory":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<Lcom/amazon/ags/api/achievements/LoadIconResponse;>;"
    iget-object v8, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;

    move-object v1, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;-><init>(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;Lcom/amazon/ags/constants/IconSize;Z)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public requestAchievement(Ljava/lang/String;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 7
    .param p1, "achievementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/achievements/GetAchievementResponse;>;"
    sget-object v0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested Achievement "

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

    .line 112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 113
    .local v2, "msg":Landroid/os/Message;
    const/16 v0, 0xc

    iput v0, v2, Landroid/os/Message;->what:I

    .line 115
    new-instance v3, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    iget-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 118
    .local v3, "replyMessengerFactory":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<Lcom/amazon/ags/api/achievements/GetAchievementResponse;>;"
    iget-object v6, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$3;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$3;-><init>(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method public requestAchievements(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/achievements/GetAchievementsResponse;>;"
    sget-object v2, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Requested Achievements Asynchronously with handle."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 88
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x11

    iput v2, v0, Landroid/os/Message;->what:I

    .line 90
    new-instance v1, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v2}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, "replyMessengerFactory":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<Lcom/amazon/ags/api/achievements/GetAchievementsResponse;>;"
    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$2;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$2;-><init>(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method public resetAchievement(Ljava/lang/String;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 7
    .param p1, "achievementId"    # Ljava/lang/String;
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
    .line 212
    .local p2, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    sget-object v0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset Achievement called on "

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

    .line 213
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 214
    .local v2, "msg":Landroid/os/Message;
    const/16 v0, 0xf

    iput v0, v2, Landroid/os/Message;->what:I

    .line 216
    new-instance v3, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    iget-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 219
    .local v3, "replyMessengerFactory":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<Lcom/amazon/ags/api/RequestResponse;>;"
    iget-object v6, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$7;-><init>(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public resetAchievements(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
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
    .line 162
    .local p1, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    sget-object v2, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Reset achievements called Asynchronously with handle."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 164
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0xe

    iput v2, v0, Landroid/os/Message;->what:I

    .line 166
    new-instance v1, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v2}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 169
    .local v1, "replyMessengerFactory":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<Lcom/amazon/ags/api/RequestResponse;>;"
    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$5;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$5;-><init>(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

.method public showAchievementsOverlay(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
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
    .line 187
    .local p1, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    sget-object v2, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Show achievements overlay called Asynchronously with handle."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 189
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x1a

    iput v2, v0, Landroid/os/Message;->what:I

    .line 191
    new-instance v1, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v2}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 194
    .local v1, "replyMessengerFactory":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<Lcom/amazon/ags/api/RequestResponse;>;"
    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$6;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$6;-><init>(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method public updateProgress(Ljava/lang/String;FLcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 8
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "percentComplete"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p3, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/achievements/UpdateProgressResponse;>;"
    sget-object v0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update Progress called on "

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

    .line 138
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 139
    .local v2, "msg":Landroid/os/Message;
    const/16 v0, 0xd

    iput v0, v2, Landroid/os/Message;->what:I

    .line 141
    new-instance v3, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    iget-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 144
    .local v3, "replyMessengerFactory":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<Lcom/amazon/ags/api/achievements/UpdateProgressResponse;>;"
    iget-object v7, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$4;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$4;-><init>(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;F)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method
