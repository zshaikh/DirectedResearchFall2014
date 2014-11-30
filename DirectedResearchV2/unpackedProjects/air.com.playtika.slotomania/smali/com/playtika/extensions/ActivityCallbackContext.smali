.class public Lcom/playtika/extensions/ActivityCallbackContext;
.super Lcom/adobe/fre/FREContext;
.source "ActivityCallbackContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_CONTENT:Ljava/lang/String; = "CONTENT"

.field private static final SCREEN_OFF:Ljava/lang/String; = "SCREEN_OFF"

.field private static final SCREEN_ON:Ljava/lang/String; = "SCREEN_ON"

.field private static final SCREEN_UNLOCK:Ljava/lang/String; = "SCREEN_UNLOCK"


# instance fields
.field private appcnt:Landroid/content/Context;

.field private filter:Landroid/content/IntentFilter;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/playtika/extensions/ActivityCallbackContext;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->appcnt:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/playtika/extensions/ActivityCallbackContext;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2(Lcom/playtika/extensions/ActivityCallbackContext;)Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->filter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method private getStartFunction()Lcom/adobe/fre/FREFunction;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/playtika/extensions/ActivityCallbackContext$1;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/ActivityCallbackContext$1;-><init>(Lcom/playtika/extensions/ActivityCallbackContext;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->appcnt:Landroid/content/Context;

    iget-object v1, p0, Lcom/playtika/extensions/ActivityCallbackContext;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 45
    :cond_0
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
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "start"

    invoke-direct {p0}, Lcom/playtika/extensions/ActivityCallbackContext;->getStartFunction()Lcom/adobe/fre/FREFunction;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object v0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/playtika/extensions/ActivityCallbackContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->appcnt:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;-><init>(Lcom/playtika/extensions/ActivityCallbackContext;Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;)V

    iput-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->receiver:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->filter:Landroid/content/IntentFilter;

    .line 71
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext;->appcnt:Landroid/content/Context;

    iget-object v1, p0, Lcom/playtika/extensions/ActivityCallbackContext;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/playtika/extensions/ActivityCallbackContext;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method
