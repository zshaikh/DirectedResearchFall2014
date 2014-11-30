.class public Lv2/com/playhaven/requests/open/PHSession;
.super Ljava/lang/Object;
.source "PHSession.java"


# static fields
.field public static final SCOUNT_PREF:Ljava/lang/String; = "com_playhaven_time_in_game_scount"

.field public static final SSUM_PREF:Ljava/lang/String; = "com_playhaven_time_in_game_ssum"

.field private static mSession:Lv2/com/playhaven/requests/open/PHSession;


# instance fields
.field private mCurTime:J

.field private mSessionCount:J

.field private mSessionPaused:Z

.field private mSessionStarted:Z

.field private mSessionTime:J

.field private mTotalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lv2/com/playhaven/requests/open/PHSession;->inflate(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionStarted:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionPaused:Z

    .line 37
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lv2/com/playhaven/requests/open/PHSession;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lv2/com/playhaven/requests/open/PHSession;

    invoke-direct {v0, p0}, Lv2/com/playhaven/requests/open/PHSession;-><init>(Landroid/content/Context;)V

    sput-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    .line 44
    :cond_0
    sget-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    return-object v0
.end method

.method private getLastElapsedTime()J
    .locals 4

    .prologue
    .line 161
    iget-boolean v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionPaused:Z

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lv2/com/playhaven/requests/open/PHSession;->mCurTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v3, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "com_playhaven_time_in_game_ssum"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lv2/com/playhaven/requests/open/PHSession;->mTotalTime:J

    .line 179
    const-string v1, "com_playhaven_time_in_game_scount"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionCount:J

    .line 180
    return-void
.end method

.method private pauseSession()V
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lv2/com/playhaven/requests/open/PHSession;->getSessionTime()J

    move-result-wide v0

    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionTime:J

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionPaused:Z

    .line 169
    return-void
.end method

.method public static regenerateInstance(Landroid/content/Context;)Lv2/com/playhaven/requests/open/PHSession;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {p0}, Lv2/com/playhaven/requests/open/PHSession;->getInstance(Landroid/content/Context;)Lv2/com/playhaven/requests/open/PHSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lv2/com/playhaven/requests/open/PHSession;->clear(Landroid/content/Context;)V

    .line 50
    invoke-static {p0}, Lv2/com/playhaven/requests/open/PHSession;->getInstance(Landroid/content/Context;)Lv2/com/playhaven/requests/open/PHSession;

    move-result-object v0

    invoke-virtual {v0}, Lv2/com/playhaven/requests/open/PHSession;->reset()V

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    .line 54
    invoke-static {p0}, Lv2/com/playhaven/requests/open/PHSession;->getInstance(Landroid/content/Context;)Lv2/com/playhaven/requests/open/PHSession;

    move-result-object v0

    return-object v0
.end method

.method public static register(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 129
    if-nez p0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-static {p0}, Lv2/com/playhaven/requests/open/PHSession;->getInstance(Landroid/content/Context;)Lv2/com/playhaven/requests/open/PHSession;

    move-result-object v0

    sput-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    .line 135
    sget-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    iget-boolean v0, v0, Lv2/com/playhaven/requests/open/PHSession;->mSessionPaused:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    invoke-direct {v0}, Lv2/com/playhaven/requests/open/PHSession;->resumeSession()V

    goto :goto_0
.end method

.method private resumeSession()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mCurTime:J

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionPaused:Z

    .line 174
    return-void
.end method

.method private save(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    iget-boolean v2, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionStarted:Z

    if-nez v2, :cond_0

    .line 205
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 199
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "com_playhaven_time_in_game_ssum"

    iget-wide v3, p0, Lv2/com/playhaven/requests/open/PHSession;->mTotalTime:J

    invoke-virtual {p0}, Lv2/com/playhaven/requests/open/PHSession;->getSessionTime()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 202
    const-string v2, "com_playhaven_time_in_game_scount"

    iget-wide v3, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static unregister(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 144
    if-nez p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {p0}, Lv2/com/playhaven/requests/open/PHSession;->getInstance(Landroid/content/Context;)Lv2/com/playhaven/requests/open/PHSession;

    move-result-object v0

    sput-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    .line 150
    sget-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    iget-boolean v0, v0, Lv2/com/playhaven/requests/open/PHSession;->mSessionPaused:Z

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    invoke-direct {v0}, Lv2/com/playhaven/requests/open/PHSession;->pauseSession()V

    .line 154
    sget-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    iget-boolean v0, v0, Lv2/com/playhaven/requests/open/PHSession;->mSessionStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lv2/com/playhaven/requests/open/PHSession;->mSession:Lv2/com/playhaven/requests/open/PHSession;

    invoke-direct {v0, p0}, Lv2/com/playhaven/requests/open/PHSession;->save(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public clear(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 185
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "com_playhaven_time_in_game_ssum"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v2, "com_playhaven_time_in_game_scount"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    return-void
.end method

.method public getSessionCount()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionCount:J

    return-wide v0
.end method

.method public getSessionTime()J
    .locals 4

    .prologue
    .line 104
    iget-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionTime:J

    invoke-direct {p0}, Lv2/com/playhaven/requests/open/PHSession;->getLastElapsedTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalTime()J
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mTotalTime:J

    invoke-virtual {p0}, Lv2/com/playhaven/requests/open/PHSession;->getSessionTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mTotalTime:J

    .line 90
    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionCount:J

    .line 91
    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionTime:J

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mCurTime:J

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionStarted:Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionPaused:Z

    .line 96
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 62
    const-string v0, "Starting a new session."

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 64
    iget-boolean v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 66
    iget-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mTotalTime:J

    invoke-virtual {p0}, Lv2/com/playhaven/requests/open/PHSession;->getSessionTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mTotalTime:J

    .line 67
    iget-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionCount:J

    .line 70
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionTime:J

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mCurTime:J

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionStarted:Z

    .line 74
    return-void
.end method

.method public startAndReset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 80
    invoke-virtual {p0}, Lv2/com/playhaven/requests/open/PHSession;->start()V

    .line 81
    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mTotalTime:J

    .line 82
    iput-wide v0, p0, Lv2/com/playhaven/requests/open/PHSession;->mSessionCount:J

    .line 83
    return-void
.end method
