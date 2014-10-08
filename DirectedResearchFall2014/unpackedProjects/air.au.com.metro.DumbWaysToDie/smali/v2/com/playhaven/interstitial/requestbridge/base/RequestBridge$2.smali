.class Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$2;
.super Landroid/content/BroadcastReceiver;
.source "RequestBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->registerRequesterReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;


# direct methods
.method constructor <init>(Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$2;->this$0:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    .line 204
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    const-string v3, "v2.com.playhaven.notification"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 213
    .local v1, "md":Landroid/os/Bundle;
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->Event:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "event":Ljava/lang/String;
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->Tag:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "tag":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$2;->this$0:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    # getter for: Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->tag:Ljava/lang/String;
    invoke-static {v3}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->access$0(Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Receiving message from displayer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$2;->this$0:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    invoke-virtual {v3, v0, v1}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->onDisplayerSentMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
