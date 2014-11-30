.class public Lcom/amazon/ags/client/achievements/AchievementsClientImpl;
.super Ljava/lang/Object;
.source "AchievementsClientImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/achievements/AchievementsClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ags/client/achievements/AchievementsClientImpl$1;
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "AC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

.field private final amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/client/AmazonGamesService;Lcom/amazon/ags/client/achievements/AchievementsService;)V
    .locals 0
    .param p1, "amazonGamesService"    # Lcom/amazon/ags/client/AmazonGamesService;
    .param p2, "achievementsService"    # Lcom/amazon/ags/client/achievements/AchievementsService;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 37
    iput-object p2, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    .line 38
    return-void
.end method

.method private canUpdateAchievement()Z
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->getStatus()Lcom/amazon/ags/api/AmazonGamesStatus;

    move-result-object v0

    .line 133
    .local v0, "status":Lcom/amazon/ags/api/AmazonGamesStatus;
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$1;->$SwitchMap$com$amazon$ags$api$AmazonGamesStatus:[I

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 141
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 138
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 133
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
.method public final varargs getAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "achievementId"    # Ljava/lang/String;
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
            "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p2}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 57
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/achievements/GetAchievementResponse;>;"
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Lcom/amazon/ags/client/achievements/GetAchievementResponseImp;

    const/16 v2, 0x14

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/achievements/GetAchievementResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 64
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    invoke-interface {v1, p1, v0}, Lcom/amazon/ags/client/achievements/AchievementsService;->requestAchievement(Ljava/lang/String;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method

.method public final varargs getAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 43
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/achievements/GetAchievementsResponse;>;"
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v1, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImp;

    const/16 v2, 0x14

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 50
    :goto_0
    return-object v0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    invoke-interface {v1, v0}, Lcom/amazon/ags/client/achievements/AchievementsService;->requestAchievements(Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method

.method public varargs loadIcon(Ljava/lang/String;Lcom/amazon/ags/constants/IconSize;Z[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "iconSize"    # Lcom/amazon/ags/constants/IconSize;
    .param p3, "unlocked"    # Z
    .param p4, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/IconSize;",
            "Z[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/LoadIconResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p4}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 96
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/achievements/LoadIconResponse;>;"
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v1, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;

    const/16 v2, 0x14

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 102
    :goto_0
    return-object v0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/amazon/ags/client/achievements/AchievementsService;->loadIcon(Ljava/lang/String;Lcom/amazon/ags/constants/IconSize;ZLcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method

.method public final varargs resetAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "achievementId"    # Ljava/lang/String;
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
    .line 108
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p2}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 109
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImp;

    const/16 v2, 0x14

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 115
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    invoke-interface {v1, p1, v0}, Lcom/amazon/ags/client/achievements/AchievementsService;->resetAchievement(Ljava/lang/String;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method

.method public final varargs resetAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
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
    .line 82
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 83
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImp;

    const/16 v2, 0x14

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 89
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    invoke-interface {v1, v0}, Lcom/amazon/ags/client/achievements/AchievementsService;->resetAchievements(Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method

.method public final varargs showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
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
    .line 120
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 121
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->getStatus()Lcom/amazon/ags/api/AmazonGamesStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_NOT_OPTED_IN:Lcom/amazon/ags/api/AmazonGamesStatus;

    if-ne v1, v2, :cond_1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    invoke-interface {v1, v0}, Lcom/amazon/ags/client/achievements/AchievementsService;->showAchievementsOverlay(Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    .line 127
    :goto_0
    return-object v0

    .line 124
    :cond_1
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImp;

    const/16 v2, 0x14

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    goto :goto_0
.end method

.method public final varargs updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "percentComplete"    # F
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p3}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 71
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/achievements/UpdateProgressResponse;>;"
    invoke-direct {p0}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->canUpdateAchievement()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->getStatus()Lcom/amazon/ags/api/AmazonGamesStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_NOT_OPTED_IN:Lcom/amazon/ags/api/AmazonGamesStatus;

    if-eq v1, v2, :cond_0

    .line 72
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;

    const/16 v2, 0x14

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/amazon/ags/client/achievements/AchievementsService;->updateProgress(Ljava/lang/String;FLcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method
