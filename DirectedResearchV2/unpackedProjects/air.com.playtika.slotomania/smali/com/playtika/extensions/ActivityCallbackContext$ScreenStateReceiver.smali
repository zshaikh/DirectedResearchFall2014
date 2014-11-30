.class Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityCallbackContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/ActivityCallbackContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/ActivityCallbackContext;


# direct methods
.method private constructor <init>(Lcom/playtika/extensions/ActivityCallbackContext;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;->this$0:Lcom/playtika/extensions/ActivityCallbackContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playtika/extensions/ActivityCallbackContext;Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;-><init>(Lcom/playtika/extensions/ActivityCallbackContext;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v2, "CONTENT"

    .line 29
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;->this$0:Lcom/playtika/extensions/ActivityCallbackContext;

    const-string v1, "CONTENT"

    const-string v1, "SCREEN_OFF"

    invoke-virtual {v0, v2, v1}, Lcom/playtika/extensions/ActivityCallbackContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;->this$0:Lcom/playtika/extensions/ActivityCallbackContext;

    # getter for: Lcom/playtika/extensions/ActivityCallbackContext;->appcnt:Landroid/content/Context;
    invoke-static {v0}, Lcom/playtika/extensions/ActivityCallbackContext;->access$0(Lcom/playtika/extensions/ActivityCallbackContext;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;->this$0:Lcom/playtika/extensions/ActivityCallbackContext;

    # getter for: Lcom/playtika/extensions/ActivityCallbackContext;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/playtika/extensions/ActivityCallbackContext;->access$1(Lcom/playtika/extensions/ActivityCallbackContext;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;->this$0:Lcom/playtika/extensions/ActivityCallbackContext;

    # getter for: Lcom/playtika/extensions/ActivityCallbackContext;->filter:Landroid/content/IntentFilter;
    invoke-static {v2}, Lcom/playtika/extensions/ActivityCallbackContext;->access$2(Lcom/playtika/extensions/ActivityCallbackContext;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    return-void

    .line 31
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;->this$0:Lcom/playtika/extensions/ActivityCallbackContext;

    const-string v1, "CONTENT"

    const-string v1, "SCREEN_ON"

    invoke-virtual {v0, v2, v1}, Lcom/playtika/extensions/ActivityCallbackContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_2
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext$ScreenStateReceiver;->this$0:Lcom/playtika/extensions/ActivityCallbackContext;

    const-string v1, "CONTENT"

    const-string v1, "SCREEN_UNLOCK"

    invoke-virtual {v0, v2, v1}, Lcom/playtika/extensions/ActivityCallbackContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
