.class public Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;
.super Lcom/adobe/fre/FREContext;
.source "ScreenListenerContext.java"


# static fields
.field private static final EVENT_ACTIVITY_INVISIBLE:Ljava/lang/String; = "event_activity_invisible"

.field private static final EVENT_ACTIVITY_VISIBLE:Ljava/lang/String; = "event_activity_visible"

.field private static volatile instance:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;


# instance fields
.field public final STATE_SCREEN_OFF:Ljava/lang/String;

.field public final STATE_SCREEN_ON:Ljava/lang/String;

.field public final STATE_SCREEN_UNLOCKED:Ljava/lang/String;

.field private lastEvent:Ljava/lang/String;

.field private screenState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, "state_screen_unlocked"

    .line 32
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 19
    const-string v0, "state_screen_off"

    iput-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->STATE_SCREEN_OFF:Ljava/lang/String;

    .line 20
    const-string v0, "state_screen_on"

    iput-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->STATE_SCREEN_ON:Ljava/lang/String;

    .line 21
    const-string v0, "state_screen_unlocked"

    iput-object v1, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->STATE_SCREEN_UNLOCKED:Ljava/lang/String;

    .line 27
    const-string v0, "state_screen_unlocked"

    iput-object v1, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->screenState:Ljava/lang/String;

    .line 28
    const-string v0, "event_activity_invisible"

    iput-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->lastEvent:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->mCheckVisibility()V

    return-void
.end method

.method private checkVisibility()Lcom/adobe/fre/FREFunction;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext$2;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext$2;-><init>(Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;)V

    return-object v0
.end method

.method public static getInstance()Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->instance:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    return-object v0
.end method

.method private isAppInFocus()Ljava/lang/Boolean;
    .locals 7

    .prologue
    .line 89
    const/4 v2, 0x1

    .line 91
    .local v2, "isAppInFocus":Z
    invoke-virtual {p0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    .local v1, "applicationContext":Landroid/content/Context;
    const-string v5, "activity"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 93
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 94
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 95
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 96
    .local v4, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    const/4 v2, 0x0

    .line 99
    .end local v4    # "topActivity":Landroid/content/ComponentName;
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5
.end method

.method private mCheckVisibility()V
    .locals 5

    .prologue
    const-string v4, "state_screen_unlocked"

    const-string v3, "event_activity_visible"

    const-string v2, "event_activity_invisible"

    .line 79
    iget-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->lastEvent:Ljava/lang/String;

    const-string v1, "event_activity_visible"

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->screenState:Ljava/lang/String;

    const-string v1, "state_screen_off"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->screenState:Ljava/lang/String;

    const-string v1, "state_screen_unlocked"

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->isAppInFocus()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    :cond_0
    const-string v0, "event_activity_invisible"

    invoke-virtual {p0, v2}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->pushMessageToAS(Ljava/lang/String;)V

    .line 81
    const-string v0, "event_activity_invisible"

    iput-object v2, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->lastEvent:Ljava/lang/String;

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->lastEvent:Ljava/lang/String;

    const-string v1, "event_activity_invisible"

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->screenState:Ljava/lang/String;

    const-string v1, "state_screen_unlocked"

    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->isAppInFocus()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "event_activity_visible"

    invoke-virtual {p0, v3}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->pushMessageToAS(Ljava/lang/String;)V

    .line 84
    const-string v0, "event_activity_visible"

    iput-object v3, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->lastEvent:Ljava/lang/String;

    goto :goto_0
.end method

.method private startService()Lcom/adobe/fre/FREFunction;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext$1;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext$1;-><init>(Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sput-object p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->instance:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "check_visibility"

    invoke-direct {p0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->checkVisibility()Lcom/adobe/fre/FREFunction;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "start_service"

    invoke-direct {p0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->startService()Lcom/adobe/fre/FREFunction;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object v0
.end method

.method public pushMessageToAS(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "mState"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->screenState:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->mCheckVisibility()V

    .line 76
    return-void
.end method
