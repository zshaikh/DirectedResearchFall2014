.class public Lcom/sgn/googleservices/MainActivity;
.super Lcom/sgn/googleservices/GPServicesActivity;
.source "MainActivity.java"


# static fields
.field public static REQUEST_ACHIEVEMENTS:I

.field public static REQUEST_LEADERBOARD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x3ea

    .line 12
    sput v0, Lcom/sgn/googleservices/MainActivity;->REQUEST_LEADERBOARD:I

    .line 13
    sput v0, Lcom/sgn/googleservices/MainActivity;->REQUEST_ACHIEVEMENTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/sgn/googleservices/GPServicesActivity;-><init>()V

    return-void
.end method

.method private callMethod()V
    .locals 6

    .prologue
    const-string v4, "leaderboardId"

    const-string v3, "achievementId"

    .line 92
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "method"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "method":Ljava/lang/String;
    const-string v2, "signout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->signOut()V

    .line 97
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->finish()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v2, "showLeaderboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const-string v2, "leaderboardId"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sgn/googleservices/MainActivity;->showLeaderboard(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->finish()V

    goto :goto_0

    .line 103
    :cond_2
    const-string v2, "submitScore"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    const-string v2, "leaderboardId"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "score"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/sgn/googleservices/MainActivity;->submitScore(Ljava/lang/String;J)V

    .line 105
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->finish()V

    goto :goto_0

    .line 107
    :cond_3
    const-string v2, "unlockAchievement"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    const-string v2, "achievementId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sgn/googleservices/MainActivity;->unlockAchievement(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->finish()V

    goto :goto_0

    .line 111
    :cond_4
    const-string v2, "incrementAchievement"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    const-string v2, "achievementId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "incrementSteps"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sgn/googleservices/MainActivity;->incrementAchievement(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->finish()V

    goto :goto_0

    .line 115
    :cond_5
    const-string v2, "showAchievements"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->showAchievements()V

    .line 117
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public incrementAchievement(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "incrementSteps"    # I

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgn/googleservices/GoogleServices;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_3

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Is not signed in"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_1
    if-nez p2, :cond_2

    const-string v0, "incrementSteps is zero"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_2
    :goto_0
    return-void

    .line 146
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "submit at Achievement = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - incrementSteps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/achievement/Achievements;->incrementImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-super {p0, p1}, Lcom/sgn/googleservices/GPServicesActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->init()V

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSignedIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sgn/googleservices/GoogleServices;->isSignedIn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 22
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "method"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "method":Ljava/lang/String;
    const-string v2, "signin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sgn/googleservices/GoogleServices;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->connect()V

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v2, "It\'s not signed in to Google Play Services, should call GoogleServices.signIn function at least one time since the game was installed"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->finish()V

    goto :goto_0
.end method

.method public onSignInFailed(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "method"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "method":Ljava/lang/String;
    const-string v3, "signin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "reason"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v3

    const-string v4, "callback_hash_failed"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sgn/googleservices/GoogleServices;->call(Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v3

    const-string v4, "callback_hash_succeeded"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sgn/googleservices/GoogleServices;->removeCallback(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->finish()V

    .line 69
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/sgn/googleservices/MainActivity;->callMethod()V

    goto :goto_0
.end method

.method public onSignInSucceeded()V
    .locals 5

    .prologue
    .line 74
    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sgn/googleservices/GoogleServices;->setIsSignedIn(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "method"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "method":Ljava/lang/String;
    const-string v2, "signin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v2

    const-string v3, "callback_hash_succeeded"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sgn/googleservices/GoogleServices;->call(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v2

    const-string v3, "callback_hash_failed"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sgn/googleservices/GoogleServices;->removeCallback(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->finish()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/sgn/googleservices/MainActivity;->callMethod()V

    goto :goto_0
.end method

.method public showAchievements()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgn/googleservices/GoogleServices;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    sget v1, Lcom/sgn/googleservices/MainActivity;->REQUEST_ACHIEVEMENTS:I

    invoke-virtual {p0, v0, v1}, Lcom/sgn/googleservices/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showLeaderboard(Ljava/lang/String;)V
    .locals 2
    .param p1, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgn/googleservices/GoogleServices;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget v1, Lcom/sgn/googleservices/MainActivity;->REQUEST_LEADERBOARD:I

    invoke-virtual {p0, v0, v1}, Lcom/sgn/googleservices/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public signOut()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->disconnect()V

    .line 125
    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sgn/googleservices/GoogleServices;->setIsSignedIn(Z)V

    .line 126
    return-void
.end method

.method submitScore(Ljava/lang/String;J)V
    .locals 5
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "score"    # J

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgn/googleservices/GoogleServices;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    cmp-long v0, p2, v3

    if-nez v0, :cond_3

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Is not signed in"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_1
    cmp-long v0, p2, v3

    if-nez v0, :cond_2

    const-string v0, "score is zero"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_2
    :goto_0
    return-void

    .line 49
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "submit at leaderboardID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - score = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method

.method public unlockAchievement(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Lcom/sgn/googleservices/GoogleServices;->getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgn/googleservices/GoogleServices;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unlock Achievement = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/sgn/googleservices/MainActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    goto :goto_0
.end method
