.class public Lcom/sgn/googleservices/GoogleServices;
.super Lcom/jesusla/ane/Context;
.source "GoogleServices.java"


# static fields
.field private static currentInstance:Lcom/sgn/googleservices/GoogleServices;


# instance fields
.field private final IS_SIGNEDIN:Ljava/lang/String;

.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jesusla/ane/Closure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jesusla/ane/Context;-><init>()V

    .line 15
    const-string v0, "AneGoogleServicesIsSignedIn"

    iput-object v0, p0, Lcom/sgn/googleservices/GoogleServices;->IS_SIGNEDIN:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sgn/googleservices/GoogleServices;->callbacks:Ljava/util/Map;

    .line 23
    const-string v0, "signIn"

    invoke-virtual {p0, v0}, Lcom/sgn/googleservices/GoogleServices;->registerFunction(Ljava/lang/String;)V

    .line 24
    const-string v0, "signOut"

    invoke-virtual {p0, v0}, Lcom/sgn/googleservices/GoogleServices;->registerFunction(Ljava/lang/String;)V

    .line 25
    const-string v0, "submitScore"

    invoke-virtual {p0, v0}, Lcom/sgn/googleservices/GoogleServices;->registerFunction(Ljava/lang/String;)V

    .line 26
    const-string v0, "showLeaderboard"

    invoke-virtual {p0, v0}, Lcom/sgn/googleservices/GoogleServices;->registerFunction(Ljava/lang/String;)V

    .line 27
    const-string v0, "isSignedIn"

    invoke-virtual {p0, v0}, Lcom/sgn/googleservices/GoogleServices;->registerFunction(Ljava/lang/String;)V

    .line 28
    const-string v0, "showAchievements"

    invoke-virtual {p0, v0}, Lcom/sgn/googleservices/GoogleServices;->registerFunction(Ljava/lang/String;)V

    .line 29
    const-string v0, "unlockAchievement"

    invoke-virtual {p0, v0}, Lcom/sgn/googleservices/GoogleServices;->registerFunction(Ljava/lang/String;)V

    .line 30
    const-string v0, "incrementAchievement"

    invoke-virtual {p0, v0}, Lcom/sgn/googleservices/GoogleServices;->registerFunction(Ljava/lang/String;)V

    .line 31
    sput-object p0, Lcom/sgn/googleservices/GoogleServices;->currentInstance:Lcom/sgn/googleservices/GoogleServices;

    .line 32
    return-void
.end method

.method public static getCurrentInstance()Lcom/sgn/googleservices/GoogleServices;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sgn/googleservices/GoogleServices;->currentInstance:Lcom/sgn/googleservices/GoogleServices;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "callbackHash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    const-string v1, "Excecute callback with ID %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/sgn/googleservices/GoogleServices;->callbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jesusla/ane/Closure;

    .line 98
    .local v0, "callback":Lcom/jesusla/ane/Closure;
    if-eqz v0, :cond_0

    .line 99
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    .line 101
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/jesusla/ane/Context;->dispose()V

    .line 41
    return-void
.end method

.method public incrementAchievement(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "incrementSteps"    # I

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sgn/googleservices/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "method"

    const-string v2, "incrementAchievement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "achievementId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "incrementSteps"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method protected initContext()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public isSignedIn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    sget-object v1, Lcom/sgn/googleservices/GoogleServices;->currentInstance:Lcom/sgn/googleservices/GoogleServices;

    invoke-virtual {v1}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "AneGoogleServicesIsSignedIn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public removeCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "callbackHash"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "Removing callback with ID %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/sgn/googleservices/GoogleServices;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public setIsSignedIn(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 111
    sget-object v2, Lcom/sgn/googleservices/GoogleServices;->currentInstance:Lcom/sgn/googleservices/GoogleServices;

    invoke-virtual {v2}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 112
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "AneGoogleServicesIsSignedIn"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method

.method public showAchievements()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sgn/googleservices/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "method"

    const-string v2, "showAchievements"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method public showLeaderboard(Ljava/lang/String;)V
    .locals 3
    .param p1, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sgn/googleservices/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "method"

    const-string v2, "showLeaderboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "leaderboardId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public signIn(Lcom/jesusla/ane/Closure;Lcom/jesusla/ane/Closure;)V
    .locals 9
    .param p1, "callbackSucceeded"    # Lcom/jesusla/ane/Closure;
    .param p2, "callbackFailed"    # Lcom/jesusla/ane/Closure;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 44
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/sgn/googleservices/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "method"

    const-string v4, "signin"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    if-eqz p2, :cond_0

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "callbackHashFailed":Ljava/lang/String;
    iget-object v3, p0, Lcom/sgn/googleservices/GoogleServices;->callbacks:Ljava/util/Map;

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v3, "callback_hash_failed"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v3, "Adding Failed callback with ID %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .end local v0    # "callbackHashFailed":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "callbackHashSucceeded":Ljava/lang/String;
    iget-object v3, p0, Lcom/sgn/googleservices/GoogleServices;->callbacks:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v3, "callback_hash_succeeded"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v3, "Adding Succeded callback with ID %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .end local v1    # "callbackHashSucceeded":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public signOut()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sgn/googleservices/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "method"

    const-string v2, "signout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public submitScore(Ljava/lang/String;J)V
    .locals 3
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "score"    # J

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sgn/googleservices/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "method"

    const-string v2, "submitScore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "leaderboardId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "score"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public unlockAchievement(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sgn/googleservices/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "method"

    const-string v2, "unlockAchievement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "achievementId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/sgn/googleservices/GoogleServices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method
