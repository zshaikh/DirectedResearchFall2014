.class public Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenListenerReceiver.java"


# instance fields
.field private context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 10
    invoke-static {}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->getInstance()Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    move-result-object v0

    iput-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;->context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    .line 13
    invoke-static {}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->getInstance()Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    move-result-object v0

    iput-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;->context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    .line 14
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v5, "state_screen_unlocked"

    .line 18
    iget-object v3, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;->context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    iget-object v3, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;->context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    iget-object v4, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;->context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "state_screen_off"

    invoke-virtual {v3, v4}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->setState(Ljava/lang/String;)V

    .line 33
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 22
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    const-string v3, "keyguard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 24
    .local v1, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 25
    .local v2, "locked":Z
    if-eqz v2, :cond_2

    .line 26
    iget-object v3, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;->context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    iget-object v4, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;->context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "state_screen_on"

    invoke-virtual {v3, v4}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_2
    iget-object v3, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;->context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    iget-object v4, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;->context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "state_screen_unlocked"

    invoke-virtual {v3, v5}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    .end local v1    # "km":Landroid/app/KeyguardManager;
    .end local v2    # "locked":Z
    :cond_3
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    iget-object v3, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;->context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    iget-object v4, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerReceiver;->context:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "state_screen_unlocked"

    invoke-virtual {v3, v5}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->setState(Ljava/lang/String;)V

    goto :goto_0
.end method
