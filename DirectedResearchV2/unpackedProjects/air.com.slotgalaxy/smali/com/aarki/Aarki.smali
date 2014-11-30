.class public Lcom/aarki/Aarki;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aarki/Aarki$EventCallbackListener;,
        Lcom/aarki/Aarki$RewardListener;,
        Lcom/aarki/Aarki$AarkiListener;,
        Lcom/aarki/Aarki$Status;
    }
.end annotation


# static fields
.field private static a:Lcom/aarki/a;

.field private static b:Lcom/aarki/d;

.field private static c:Lcom/aarki/Aarki$AarkiListener;

.field public static interstitialLoadingStarted:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/aarki/Aarki;->interstitialLoadingStarted:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method static synthetic a()Lcom/aarki/Aarki$AarkiListener;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/aarki/Aarki;->c:Lcom/aarki/Aarki$AarkiListener;

    return-object v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/aarki/Aarki;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/aarki/a;

    invoke-direct {v1, p0}, Lcom/aarki/a;-><init>(Landroid/content/Context;)V

    .line 26
    sput-object v1, Lcom/aarki/Aarki;->a:Lcom/aarki/a;

    invoke-virtual {v1}, Lcom/aarki/a;->start()V

    .line 27
    sget-object v1, Lcom/aarki/Aarki;->a:Lcom/aarki/a;

    invoke-virtual {v1}, Lcom/aarki/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v0

    return-void

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static a(Lcom/aarki/Aarki$Status;)V
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/aarki/Aarki;->b()Lcom/aarki/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aarki/Aarki;->b()Lcom/aarki/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aarki/d;->a()V

    .line 305
    :cond_0
    invoke-static {}, Lcom/aarki/AarkiInterstitial;->b()V

    .line 307
    sget-object v0, Lcom/aarki/Aarki;->c:Lcom/aarki/Aarki$AarkiListener;

    if-eqz v0, :cond_1

    .line 308
    sget-object v0, Lcom/aarki/Aarki;->c:Lcom/aarki/Aarki$AarkiListener;

    invoke-interface {v0, p0}, Lcom/aarki/Aarki$AarkiListener;->onFinished(Lcom/aarki/Aarki$Status;)V

    .line 311
    :cond_1
    return-void
.end method

.method private static declared-synchronized b()Lcom/aarki/d;
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/aarki/Aarki;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aarki/Aarki;->b:Lcom/aarki/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized c()Lcom/aarki/a;
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/aarki/Aarki;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aarki/Aarki;->a:Lcom/aarki/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static fetchInterstitialAd(Ljava/lang/String;Lcom/aarki/Aarki$AarkiListener;)V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/aarki/Aarki;->fetchInterstitialAd(Ljava/lang/String;Ljava/util/Map;Lcom/aarki/Aarki$AarkiListener;)V

    .line 209
    return-void
.end method

.method public static fetchInterstitialAd(Ljava/lang/String;Ljava/util/Map;Lcom/aarki/Aarki$AarkiListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aarki/Aarki$AarkiListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    sget-object v0, Lcom/aarki/Aarki;->interstitialLoadingStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 218
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/aarki/Aarki;->interstitialLoadingStarted:Ljava/lang/Boolean;

    .line 221
    sput-object p2, Lcom/aarki/Aarki;->c:Lcom/aarki/Aarki$AarkiListener;

    .line 223
    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 224
    sget-object v0, Lcom/aarki/Aarki;->c:Lcom/aarki/Aarki$AarkiListener;

    sget-object v1, Lcom/aarki/Aarki$Status;->AppNotRegistered:Lcom/aarki/Aarki$Status;

    invoke-interface {v0, v1}, Lcom/aarki/Aarki$AarkiListener;->onFinished(Lcom/aarki/Aarki$Status;)V

    .line 227
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/aarki/Aarki;->interstitialLoadingStarted:Ljava/lang/Boolean;

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {}, Lcom/aarki/AarkiInterstitial;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    sget-object v0, Lcom/aarki/Aarki;->c:Lcom/aarki/Aarki$AarkiListener;

    sget-object v1, Lcom/aarki/Aarki$Status;->OK:Lcom/aarki/Aarki$Status;

    invoke-interface {v0, v1}, Lcom/aarki/Aarki$AarkiListener;->onFinished(Lcom/aarki/Aarki$Status;)V

    .line 235
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/aarki/Aarki;->interstitialLoadingStarted:Ljava/lang/Boolean;

    goto :goto_0

    .line 239
    :cond_2
    const-string v0, "fetch"

    new-instance v1, Lcom/aarki/Aarki$1;

    invoke-direct {v1}, Lcom/aarki/Aarki$1;-><init>()V

    invoke-static {p0, v0, p1, v1}, Lcom/aarki/AarkiInterstitial;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/aarki/AarkiInterstitial$Listener;)V

    goto :goto_0
.end method

.method public static registerApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/aarki/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/aarki/Aarki;->c()Lcom/aarki/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aarki/Aarki;->c()Lcom/aarki/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aarki/a;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-static {p0}, Lcom/aarki/Aarki;->a(Landroid/content/Context;)V

    .line 153
    invoke-static {}, Lcom/aarki/Aarki;->c()Lcom/aarki/a;

    move-result-object v0

    const-string v1, "__install__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aarki/a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static registerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    invoke-static {p0, p1}, Lcom/aarki/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/aarki/Aarki;->c()Lcom/aarki/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aarki/Aarki;->c()Lcom/aarki/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aarki/a;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    if-eqz p2, :cond_0

    .line 139
    invoke-static {p0}, Lcom/aarki/Aarki;->a(Landroid/content/Context;)V

    .line 142
    invoke-static {}, Lcom/aarki/Aarki;->c()Lcom/aarki/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/aarki/a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static registerEvent(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/aarki/Aarki;->c()Lcom/aarki/a;

    move-result-object v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-virtual {v0, p0}, Lcom/aarki/a;->b(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static registerInstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aarki/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    invoke-static {p0}, Lcom/aarki/Aarki;->a(Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/aarki/Aarki;->c()Lcom/aarki/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aarki/a;->a(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static registerPaidApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/aarki/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    invoke-static {p0}, Lcom/aarki/Aarki;->a(Landroid/content/Context;)V

    .line 124
    invoke-static {}, Lcom/aarki/Aarki;->c()Lcom/aarki/a;

    move-result-object v0

    const-string v1, "__install__"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/aarki/a;->a(Ljava/lang/String;Z)V

    .line 125
    return-void
.end method

.method public static setClientType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0}, Lcom/aarki/b;->b(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static setEventCallback(Lcom/aarki/Aarki$EventCallbackListener;)V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/aarki/Aarki;->c()Lcom/aarki/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcom/aarki/Aarki;->c()Lcom/aarki/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aarki/a;->a(Lcom/aarki/Aarki$EventCallbackListener;)V

    goto :goto_0
.end method

.method public static setRewardListener(Lcom/aarki/Aarki$RewardListener;)V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {}, Lcom/aarki/Aarki;->b()Lcom/aarki/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aarki/Aarki;->b()Lcom/aarki/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aarki/d;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :cond_2
    new-instance v0, Lcom/aarki/d;

    invoke-direct {v0}, Lcom/aarki/d;-><init>()V

    .line 86
    sput-object v0, Lcom/aarki/Aarki;->b:Lcom/aarki/d;

    invoke-virtual {v0}, Lcom/aarki/d;->start()V

    .line 88
    sget-object v0, Lcom/aarki/Aarki;->b:Lcom/aarki/d;

    invoke-virtual {v0, p0}, Lcom/aarki/d;->a(Lcom/aarki/Aarki$RewardListener;)V

    goto :goto_0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0}, Lcom/aarki/b;->a(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static showAds(Landroid/app/Activity;Ljava/lang/String;Lcom/aarki/Aarki$AarkiListener;)V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/aarki/Aarki;->showAds(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/aarki/Aarki$AarkiListener;)V

    .line 200
    return-void
.end method

.method public static showAds(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/aarki/Aarki$AarkiListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aarki/Aarki$AarkiListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    sput-object p3, Lcom/aarki/Aarki;->c:Lcom/aarki/Aarki$AarkiListener;

    .line 190
    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    sget-object v0, Lcom/aarki/Aarki;->c:Lcom/aarki/Aarki$AarkiListener;

    sget-object v1, Lcom/aarki/Aarki$Status;->AppNotRegistered:Lcom/aarki/Aarki$Status;

    invoke-interface {v0, v1}, Lcom/aarki/Aarki$AarkiListener;->onFinished(Lcom/aarki/Aarki$Status;)V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/aarki/AarkiActivity;->launch(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/aarki/Aarki$AarkiListener;)V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/aarki/Aarki;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/aarki/Aarki$AarkiListener;)V

    .line 251
    return-void
.end method

.method public static showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/aarki/Aarki$AarkiListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aarki/Aarki$AarkiListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    sget-object v0, Lcom/aarki/Aarki;->interstitialLoadingStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 260
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/aarki/Aarki;->interstitialLoadingStarted:Ljava/lang/Boolean;

    .line 261
    sput-object p3, Lcom/aarki/Aarki;->c:Lcom/aarki/Aarki$AarkiListener;

    .line 265
    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 266
    sget-object v0, Lcom/aarki/Aarki;->c:Lcom/aarki/Aarki$AarkiListener;

    sget-object v1, Lcom/aarki/Aarki$Status;->AppNotRegistered:Lcom/aarki/Aarki$Status;

    invoke-interface {v0, v1}, Lcom/aarki/Aarki$AarkiListener;->onFinished(Lcom/aarki/Aarki$Status;)V

    .line 269
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/aarki/Aarki;->interstitialLoadingStarted:Ljava/lang/Boolean;

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {}, Lcom/aarki/AarkiInterstitial;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-static {p0}, Lcom/aarki/AarkiInterstitial;->a(Landroid/app/Activity;)V

    .line 277
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/aarki/Aarki;->interstitialLoadingStarted:Ljava/lang/Boolean;

    goto :goto_0

    .line 280
    :cond_2
    const/4 v0, 0x0

    new-instance v1, Lcom/aarki/Aarki$2;

    invoke-direct {v1, p0}, Lcom/aarki/Aarki$2;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, v0, p2, v1}, Lcom/aarki/AarkiInterstitial;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/aarki/AarkiInterstitial$Listener;)V

    goto :goto_0
.end method

.method public static userId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/aarki/b;->a()Lcom/aarki/b;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/aarki/b;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "2.8"

    return-object v0
.end method
