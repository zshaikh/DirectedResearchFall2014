.class public Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;
.super Ljava/lang/Object;
.source "BridgeManager.java"


# static fields
.field public static bridges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachDisplayer(Ljava/lang/String;Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;)V
    .locals 2
    .parameter "tag"
    .parameter "displayer"

    .prologue
    .line 84
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    .line 86
    .local v0, bridge:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {v0, p1}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->attachDisplayer(Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;)V

    goto :goto_0
.end method

.method public static attachRequester(Ljava/lang/String;Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;)V
    .locals 2
    .parameter "tag"
    .parameter "requester"

    .prologue
    .line 60
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    .line 62
    .local v0, bridge:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {v0, p1}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->attachRequester(Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;)V

    goto :goto_0
.end method

.method public static closeBridge(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 39
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    .line 41
    .local v0, bridge:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static detachDisplayer(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 114
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    .line 116
    .local v0, bridge:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->detachDisplayer()V

    goto :goto_0
.end method

.method public static detachRequester(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 68
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    .line 70
    .local v0, bridge:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->detachRequester()V

    goto :goto_0
.end method

.method public static getBridge(Ljava/lang/String;)Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
    .locals 1
    .parameter "tag"

    .prologue
    .line 130
    sget-object v0, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    return-object p0
.end method

.method public static getDisplayer(Ljava/lang/String;)Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;
    .locals 2
    .parameter "tag"

    .prologue
    .line 122
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    .line 124
    .local v0, bridge:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->getDisplayer()Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRequester(Ljava/lang/String;)Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;
    .locals 2
    .parameter "tag"

    .prologue
    .line 76
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    .line 78
    .local v0, bridge:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 80
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->getRequester()Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

    move-result-object v1

    goto :goto_0
.end method

.method public static openBridge(Ljava/lang/String;Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;)V
    .locals 1
    .parameter "tag"
    .parameter "bridge"

    .prologue
    .line 34
    sget-object v0, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private static sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 2
    .parameter "intentFilter"
    .parameter "tag"
    .parameter "event"
    .parameter "message"
    .parameter "context"

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->Tag:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    invoke-virtual {v1}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->Event:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;

    invoke-virtual {v1}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "v2.com.playhaven.notification"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public static sendMessageFromDisplayer(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 3
    .parameter "tag"
    .parameter "event"
    .parameter "message"
    .parameter "context"

    .prologue
    .line 177
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    .line 179
    .local v0, bridge:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending message from displayer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->getRequesterIntentFilter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1, p2, p3}, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static sendMessageFromRequester(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 2
    .parameter "tag"
    .parameter "event"
    .parameter "message"
    .parameter "context"

    .prologue
    .line 159
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    .line 161
    .local v0, bridge:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->getDisplayerIntentFilter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1, p2, p3}, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static transferBridge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "old_tag"
    .parameter "new_tag"

    .prologue
    .line 100
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;

    .line 102
    .local v0, bridge:Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 104
    :cond_0
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->bridges:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v0, p1}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->onTagChanged(Ljava/lang/String;)V

    goto :goto_0
.end method
